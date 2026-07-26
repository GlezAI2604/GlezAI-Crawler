FROM docker.io/searxng/searxng:latest

# Copiamos nuestra configuración encima de la que trae por defecto,
# para habilitar el formato JSON (viene apagado por seguridad)
# y desactivar el limitador de bots (si no, bloquea las peticiones
# automáticas que le va a mandar nuestro backend).
COPY settings.yml /etc/searxng/settings.yml

ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.yml
