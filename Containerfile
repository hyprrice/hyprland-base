FROM alpine:3
LABEL org.opencontainers.image.source="https://github.com/hyprrice/hyprland-base"
ARG SOURCE_RICING=https://github.com/hyprrice/test-ricing.git
RUN apk add --no-cache sed
RUN mkdir /app
WORKDIR /app
COPY . .
ADD ${SOURCE_RICING} ./rice-in
CMD ["./entrypoint.sh"]
