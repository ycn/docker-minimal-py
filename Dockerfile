# Pull base image
FROM alpine:latest
MAINTAINER Andy Yuan <andy@ycn.cc>

# Set the timezone
RUN apk --no-cache add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

# Install Python
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install --upgrade pip \
  && rm -rf /var/cache/apk/*

# Define default command
CMD ["python", "-V"]
