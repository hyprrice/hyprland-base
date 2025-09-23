FROM alpine:3
ARG SOURCE_RICING=https://github.com/hyprrice/test-ricing.git
RUN apk add --no-cache sed
RUN mkdir /app
WORKDIR /app
COPY . .
ADD ${SOURCE_RICING} ./rice-in
CMD ["./entrypoint.sh"]