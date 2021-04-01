## EC2 é um IaaS
## EC2 = Elastic Cloud Computing

01. Introdução ao Cloud Computing
- IaaS (Infra-Estrutura): criar máquinas, atualizar máquinas, deletar máquinas
- PaaS (Platform): aplicação weblogic, IIS, Apache
- SaaS (Softwares): google docs, drop box

02. Montando nosso primeiro ambiente no EC2
03. Escalando o banco de dados com RDS
04. Mais maquinas no EC2
05. Escalabilidade horizontal com Classic Load Balancer
06. Publicando versões diferentes com Application Load Balancer
07. Usando Sticky Session
- Sticky Session: cookie adicional para saber qual instância deve enviar as requisições.
- Balanceador por cliente;
08. Escalando EC2 automaticamente
09. Configurando o EC2 com o AWS CLI
```
aws ec2 run-instances --image-id ami-06767ea3972f81b10 --count 1 --instance-type t2.micro --key-name catalogo.pem --security-groups launch-wizard-1

aws ec2 run-instances --image-id ami-06767ea3972f81b10 --count 1 --instance-type t2.micro --key-name catalogo.pem --security-groups launch-wizard-1

aws elb create-load-balancer --load-balancer-name "aws-cli-lb" --listeners "Protocol=HTTP,LoadBalancerPort=80,InstanceProtocol=HTTP,InstancePort=8080" --availability-zones sa-east-1a sa-east-1c

aws elb register-instances-with-load-balancer --load-balancer-name "aws-cli-lb" --instances i-0f8f470386f0e2ddc i-0b1526f1c2abcbe05
```