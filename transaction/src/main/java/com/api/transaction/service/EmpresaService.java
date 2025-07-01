package com.api.transaction.service;

import com.api.transaction.models.request.EmpresaRequest;
import com.api.transaction.models.response.EmpresaResponse;
import java.util.List;

public interface EmpresaService {

    List<EmpresaResponse> getEmpresasConTransferenciasUltimoMes();
    
    List<EmpresaResponse> getEmpresasAdheridasUltimoMes();

    EmpresaResponse adherirEmpresa(EmpresaRequest request);
} 