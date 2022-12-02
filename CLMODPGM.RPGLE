**free

    ctl-opt Copyright('Bancolombia - Natalia Restrepo Gutierrez');

    dcl-s wNombre char(10);
    dcl-s wId int(5);
    dcl-s wMsgId char(7);

    // - Prototypes

    dcl-pr prEntrada;
        parNombre like(wNombre) Const;
        parId like (wId) Const;
        parMsgId like (wMsgId);
    end-pr;

    wNombre ='Natalia';
    wId=1110;
    wMsgId='';

    prEntrada(wNombre:wId:wMsgId);

    Return;