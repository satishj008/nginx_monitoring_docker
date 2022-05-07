FROM openresty/openresty

RUN apt update
RUN apt install git -y
RUN mkdir /home/data
WORKDIR /home/data
RUN git clone https://github.com/knyar/nginx-lua-prometheus.git

EXPOSE 80
EXPOSE 9145

# EXPOSE 5432


# RUN apt-get install build-essential -y
# RUN apt-get install postgresql-server-dev-all -y # For installing psycopg2
# RUN apt-get install libssl-dev -y
# RUN apt-get install swig -y
#RUN apt-get install nginx -y

# ARG AWS_KEY
# ARG AWS_SECRET_KEY
# ARG ENV

# ENV AWS_ACCESS_KEY_ID=${AWS_KEY}
# ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_KEY}
# ENV ENVIRONMENT=${ENV}

# Port to expose
