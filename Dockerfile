FROM python:3.6-slim
COPY ./main.py /opt
WORKDIR /opt
RUN pip install --no-cache-dir -i https://mirrors.aliyun.com/pypi/simple/ requests  falcon
ENV Wechat_WebHook_URL='xxx'
EXPOSE 8000
CMD python /opt/main.py
