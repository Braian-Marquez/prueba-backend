package com.api.transaction.models.mapper;

import com.api.commons.models.entity.Empresa;
import com.api.transaction.models.request.EmpresaRequest;
import com.api.transaction.models.response.EmpresaResponse;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class EmpresaMapper {
    
    public Empresa toEntity(EmpresaRequest request) {
        Empresa empresa = new Empresa();
        empresa.setCuit(request.getCuit());
        empresa.setRazonSocial(request.getRazonSocial());
        empresa.setFechaAdhesion(LocalDateTime.now());
        empresa.setActiva(true);
        return empresa;
    }
    
    public EmpresaResponse toResponse(Empresa empresa) {
        return new EmpresaResponse(
                empresa.getId(),
                empresa.getCuit(),
                empresa.getRazonSocial(),
                empresa.getFechaAdhesion(),
                empresa.getActiva()
        );
    }
    
    public List<EmpresaResponse> toResponseList(List<Empresa> empresas) {
        return empresas.stream()
                .map(this::toResponse)
                .collect(Collectors.toList());
    }
} 