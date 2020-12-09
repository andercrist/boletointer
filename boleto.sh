#!/bin/sh
curl -k -vvvv \
  --request POST \
  --header "Content-Type: application/json" \
  --header "x-inter-conta-corrente: XXXXXXX" \
  --cacert ./certificado.crt \
  --cert ./certificado.crt \
  --key ./seudominio.key \
  --data '{
        "pagador":{
            "cnpjCpf": "XXXXXXX",
            "nome":"Nome do pagador",
            "email":"Email do pagador",
            "telefone":"telefone sem ddd",
            "cep":"cep",
            "numero":"numero",
            "complemento":"complement",
            "bairro":"bairro",
            "cidade":"Curitiba",
            "uf":"PR",
            "endereco":"logradouro",
            "ddd":"00",
            "tipoPessoa":"FISICA"
        },
        "seuNumero":"00002",
        "dataEmissao": "2020-12-09",
        "dataLimite":"TRINTA",
        "dataVencimento":"2020-12-25",
        "mensagem":{
            "linha1":"mensagem na linha 1",
            "linha2":"mensagem na linha 2",
            "linha3":"mensagem na linha 3",
            "linha4":"mensagem na linha 4",
            "linha5":"mensagem na linha 5"
        },
        "desconto1":{
            "codigoDesconto":"NAOTEMDESCONTO",
            "taxa":0,
            "valor":0,
            "data":""
        },
        "desconto2":{
            "codigoDesconto":"NAOTEMDESCONTO",
            "taxa":0,
            "valor":0,
            "data":""
        },
        "desconto3":{
            "codigoDesconto":"NAOTEMDESCONTO",
            "taxa":0,
            "valor":0,
            "data":""
        },
        "valorNominal":100,
        "valorAbatimento":0,
        "multa":{
            "codigoMulta":"NAOTEMMULTA",
            "valor":0,
            "taxa":0
        },
        "mora":{
            "codigoMora":"ISENTO",
            "valor":0,
            "taxa":0
        },
        "cnpjCPFBeneficiario": "XXXXXXX",
        "numDiasAgenda":"TRINTA"
    }' \
    "https://apis.bancointer.com.br/openbanking/v1/certificado/boletos"