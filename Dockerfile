FROM nginx:stable

# Add a HEALTHCHECK
HEALTHCHECK CMD curl --fail http://localhost || exit 1

COPY index.html /usr/share/nginx/html/index.html

# Create non-root user and switch
RUN adduser --disabled-password appuser
USER appuser
