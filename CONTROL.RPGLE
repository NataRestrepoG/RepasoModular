**free

    ctl-opt Copyright('Bancolombia - Natalia Restrepo Gutierrez');
    ctl-opt nomain;

    /copy COPY

    dcl-Proc PrEntrada Export;
        dcl-pi *n;
            InNombre like(wNombreT) CONST;
            InId like(wIdT) CONST;
            OutMsgId like(wMsgIdT);
        end-pi;

        //- Structures

        dcl-Ds DsUsuario likeDs(DsUsuarioT);

        //- Variables

        dcl-s wSqlState like(wSqlStateT);

        //- Process

        DsUsuario.Nombre = InNombre;
        DsUsuario.Id = InId;
        DsUsuario.Fecha = FnFormatoFecha(%Date());
        DsUsuario.Tiempo = FnFormatoTiempo(%Time());

        PrInsertar(DsUsuario:wSqlState);

        OutMsgId=FnObtenerMensaje(wSqlState);

    end-Proc;
