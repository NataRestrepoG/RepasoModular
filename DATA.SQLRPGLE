**free

    ctl-opt Copyright('Bancolombia - Natalia Restrepo Gutierrez');
    ctl-opt nomain;

    /copy COPY

    dcl-Proc PrInsertar Export;
        dcl-pi *n;
            InUsuario likeDs(DsUsuarioT) CONST;
            OutSqlState like(wSqlStateT);
        end-pi;

        //- Process

        Exec SQL
            Insert Into USUARIO Values(:InUsuario);

    end-Proc;