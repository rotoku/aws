# AWS Simple Storage Service S3

## criando um novo bucket
aws s3 mb s3://rotoku-images

## forçando remoção do bucket com conteúdo
aws s3 rb s3://rotoku-s3 --force

## download conteúdo s3
aws s3 cp s3://rotoku-s3/teste.txt

## upload conteúdo s3
aws s3 cp teste.txt s3://rotoku-s3

## remove o objeto no bucket
aws s3 rm s3://rotoku-s3/teste.txt

## renomear ou mover
aws s3 mv s3://rotoku-s3/teste.txt s3://rotoku-s3/testando.txt

## sincronizar o ambiente remoto com o local
aws s3 sync s3://rotoku-s3 rotoku-s3

## sincronizar o ambiente local com o remoto
aws s3 sync . s3://rotoku-s3

## sincronizar o ambiente local com o remoto (arquivos excluídos locais)
aws s3 sync . s3://rotoku-s3 --delete

/** Uma visão programática com o SDK **/
- listando os buckets via sdk
- criando os buckets via sdk
- excluindo os buckets via sdk
- listando os objetos via sdk
- criando os objetos via sdk
- excluindo os objetos via sdk

/** Versionando o BUCKET **/

/** Classes de Armazenamento **/
- esta relacionado ao custo e ao armazenamento
Standard		= -
## Arquivo de backup e arquivo de versões
Standard IA		= tamanho minimo 128KB, duração minima de 30 dias, taxa de recuperação por GB;
Amazon Glacier	= duração minima de 90 dias, latência do primeiro byte minutos/horas, taxa de recuperação por GB;

- Fator financeiro
Standard		= +R$
Standard IA		= +-R$
Amazon Glacier	= -R$ (não esta implementado no brasil)

- Life Cycle Policy (é possível ao passar do tempo transitar o classe de persistência)

					Standard	Standard_IA		Amazon_Glacier
Primeiros 50 TB		$0,0215		$0,00152		$0,0005

