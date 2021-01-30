# alertmanager-webhook
 - 
 ```
global:
  resolve_timeout: 30s
route:
  group_by: ['alertname']
  group_wait: 10s
  group_interval: 20s
  repeat_interval: 1h
  receiver: 'webhook'
receivers:
- name: 'webhook'
  webhook_configs:
  - url: 'http://127.0.0.1:8000/connect'
    send_resolved: true
 ```


- 使用
docker run -d -p 8000:8000 --name xxx -e Wechat_Webhook_URL='xxx' registry.cn-hangzhou.aliyuncs.com/lcl-work/lcl:alert-webhook
