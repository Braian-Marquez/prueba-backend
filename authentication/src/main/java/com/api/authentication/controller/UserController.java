package com.api.authentication.controller;

import java.io.IOException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.api.authentication.models.repository.UserRepository;
import com.api.authentication.models.request.AuthenticationRequest;
import com.api.authentication.models.request.LoginRequest;
import com.api.authentication.models.response.UserProfileResponse;
import com.api.authentication.models.response.UserProfileResponseImpl;
import com.api.authentication.security.JwtService;
import com.api.authentication.service.UserDetailsCustomService;
import com.api.authentication.utils.Messenger;
import com.api.commons.exception.BadCredentialsException;
import com.api.commons.exception.InvalidCredentialsException;
import com.api.commons.models.entity.UserEntity;
import com.api.commons.models.enums.CodeEnum;

import jakarta.validation.Valid;


@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping("/public/v1")
public class UserController {

	private final UserDetailsCustomService service;
	private final JwtService jwtService;
	private final UserRepository userRepository;
	private final Messenger messenger;

	@PostMapping(value = "/login", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<?> login(@RequestBody @Valid LoginRequest authenticationRequest)
	        throws InvalidCredentialsException {
	    UserEntity userEntity = service.login(authenticationRequest);
	    if (userEntity != null) {
	    	  String jwtToken = jwtService.generateToken(userEntity);
	          UserProfileResponse userProfile = userRepository.findUserProfileByUserId(userEntity.getId())
	                  .map(profile -> new UserProfileResponseImpl(
	                          profile.getIdCustomer(),
	                          profile.getIdUser(),
	                          profile.getName(),
	                          profile.getRoles(),
	                          jwtToken)) 
	                  .orElseThrow(() -> new InvalidCredentialsException("El usuario no existe"));
	        return ResponseEntity.status(HttpStatus.ACCEPTED).body(userProfile);
	    } else {
	        throw new BadCredentialsException(messenger.getMessage(CodeEnum.BAD_CREDENTIALS));
	    }
	}


	@PostMapping("/register")
	public ResponseEntity<?> registerCustomer(@RequestBody @Valid AuthenticationRequest user) throws IOException, InvalidCredentialsException {
		return service.saveCustomer(user);
	}

	
}
