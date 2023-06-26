### Info Variable ###
user=humtej1204
###DEFINIR TOKEN
# token=

### Repository Variable ###
btn_cloud-admin=btn_cloud-admin
btn_cloud-master=btn_cloud-master

bc_ms-actualizar-trx=bc_ms-actualizar-trx
bc_ms-sac-conector=bc_ms-sac-conector
bc_ms-enviar-notificacion=bc_ms-enviar-notificacion
bc_ms-usuarios=bc_ms-usuarios
bc_ms-comercio=bc_ms-comercio
bc_ms-parametros=bc_ms-parametros
bc_ms-consultas-trx=bc_ms-consultas-trx
bc_ms-pago-tarjeta=bc_ms-pago-tarjeta
bc_ms-pago-multicompra=bc_ms-pago-multicompra
bc_ms-channel-front=bc_ms-channel-front
bc_ms-fuse-conector=bc_ms-fuse-conector
bc_ms-resumen-transaccion=bc_ms-resumen-transaccion
bc_ms-validar-carrito=bc_ms-validar-carrito
bc_ms-web-checkout=bc_ms-web-checkout
bc_ms-otp-services=bc_ms-otp-services
bc_ms-pse-conector=bc_ms-pse-conector
bc_ms-metodos-pago=bc_ms-metodos-pago
bc_ms-datafono-trx=bc_ms-datafono-trx
bc_ms-pago-link=bc_ms-pago-link
bc_ms-actualizar-pse=bc_ms-actualizar-pse
bc_ms-pagos=bc_ms-pagos
bc_ms-tarjeta-habiente=bc_ms-tarjeta-habiente
bc_ms-template=bc_ms-template
bc_ms-validacion-bin=bc_ms-validacion-bin

bc_ws-consulta-pago=bc_ws-consulta-pago
bc_wsdl-anulacion-redeban=bc_wsdl-anulacion-redeban
bc_loader-comercio-app=bc_loader-comercio-app
bc_loader-usuario-app=bc_loader-usuario-app
bc_upload-s3-amazon=bc_upload-s3-amazon
bc_client-mutual-tls=bc_client-mutual-tls
bc_security-wss4j=bc_security-wss4j

### Commands Variable ###
cloneCommand=git clone
gitUri=github.com/Redeban/
url=https://$(user):$(token)@$(gitUri)
### Input Variable ###
REPO?=

### Individual clone ###
btn_cloud-admin:
	$(cloneCommand) $(url)$(btn_cloud-admin).git
btn_cloud-master:
	$(cloneCommand) $(url)$(btn_cloud-master).git
bc_ms-actualizar-trx:
	$(cloneCommand) $(url)$(bc_ms-actualizar-trx).git
bc_ms-sac-conector:
	$(cloneCommand) $(url)$(bc_ms-sac-conector).git
bc_ms-enviar-notificacion:
	$(cloneCommand) $(url)$(bc_ms-enviar-notificacion).git
bc_ms-usuarios:
	$(cloneCommand) $(url)$(bc_ms-usuarios).git
bc_ms-comercio:
	$(cloneCommand) $(url)$(bc_ms-comercio).git
bc_ms-parametros:
	$(cloneCommand) $(url)$(bc_ms-parametros).git
bc_ms-consultas-trx:
	$(cloneCommand) $(url)$(bc_ms-consultas-trx).git
bc_ms-pago-tarjeta:
	$(cloneCommand) $(url)$(bc_ms-pago-tarjeta).git
bc_ms-pago-multicompra:
	$(cloneCommand) $(url)$(bc_ms-pago-multicompra).git
bc_ms-channel-front:
	$(cloneCommand) $(url)$(bc_ms-channel-front).git
bc_ms-fuse-conector:
	$(cloneCommand) $(url)$(bc_ms-fuse-conector).git
bc_ms-resumen-transaccion:
	$(cloneCommand) $(url)$(bc_ms-resumen-transaccion).git
bc_ms-validar-carrito:
	$(cloneCommand) $(url)$(bc_ms-validar-carrito).git
bc_ms-web-checkout:
	$(cloneCommand) $(url)$(bc_ms-web-checkout).git
bc_ms-otp-services:
	$(cloneCommand) $(url)$(bc_ms-otp-services).git
bc_ms-pse-conector:
	$(cloneCommand) $(url)$(bc_ms-pse-conector).git
bc_ms-metodos-pago:
	$(cloneCommand) $(url)$(bc_ms-metodos-pago).git
bc_ms-datafono-trx:
	$(cloneCommand) $(url)$(bc_ms-datafono-trx).git
bc_ms-pago-link:
	$(cloneCommand) $(url)$(bc_ms-pago-link).git
bc_ms-actualizar-pse:
	$(cloneCommand) $(url)$(bc_ms-actualizar-pse).git
bc_ms-pagos:
	$(cloneCommand) $(url)$(bc_ms-pagos).git
bc_ms-tarjeta-habiente:
	$(cloneCommand) $(url)$(bc_ms-tarjeta-habiente).git
bc_ms-template:
	$(cloneCommand) $(url)$(bc_ms-template).git
bc_ms-validacion-bin:
	$(cloneCommand) $(url)$(bc_ms-validacion-bin).git
bc_ws-consulta-pago:
	$(cloneCommand) $(url)$(bc_ws-consulta-pago).git
bc_wsdl-anulacion-redeban:
	$(cloneCommand) $(url)$(bc_wsdl-anulacion-redeban).git
bc_loader-comercio-app:
	$(cloneCommand) $(url)$(bc_loader-comercio-app).git
bc_loader-usuario-app:
	$(cloneCommand) $(url)$(bc_loader-usuario-app).git
bc_upload-s3-amazon:
	$(cloneCommand) $(url)$(bc_upload-s3-amazon).git
bc_client-mutual-tls:
	$(cloneCommand) $(url)$(bc_client-mutual-tls).git
bc_security-wss4j:
	$(cloneCommand) $(url)$(bc_security-wss4j).git

### Clone ALL ###
clone_all: btn_cloud-admin btn_cloud-master bc_ms-actualizar-trx bc_ms-sac-conector bc_ms-enviar-notificacion bc_ms-usuarios bc_ms-comercio bc_ms-parametros bc_ms-consultas-trx bc_ms-pago-tarjeta bc_ms-pago-multicompra bc_ms-channel-front bc_ms-fuse-conector bc_ms-resumen-transaccion bc_ms-validar-carrito bc_ms-web-checkout bc_ms-otp-services bc_ms-pse-conector bc_ms-metodos-pago bc_ms-datafono-trx bc_ms-pago-link bc_ms-actualizar-pse bc_ms-pagos bc_ms-tarjeta-habiente bc_ms-template bc_ms-validacion-bin bc_ws-consulta-pago bc_wsdl-anulacion-redeban bc_loader-comercio-app bc_loader-usuario-app bc_upload-s3-amazon bc_client-mutual-tls bc_security-wss4j

### Clone Specific Repository ###
clone: $(REPO)