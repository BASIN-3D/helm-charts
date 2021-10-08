{/*
NERSC Spin annotations
*/}}
{{- define "django-basin3d.annotations.spin" -}}
{{- if .Values.spin.enabled }}
field.cattle.io/creatorId: {{ required "Please set .Values.spin.creatorId" .Values.spin.creatorId }}
{{- end }}
{{- end }}


{{/*
NERSC Spin Ingress annotations
*/}}
{{- define "django-basin3d.annotations.spin.ingress" -}}
{{- if .Values.spin.enabled }}
nersc.gov/clusterName: {{ required "Please set .Values.spin.clusterName" .Values.spin.clusterName }}
nersc.gov/serverAlias: {{ required "Please set .Values.spin.serverAlias" .Values.spin.serverAlias }}
nginx.ingress.kubernetes.io/enable-real-ip: "true"
nginx.ingress.kubernetes.io/proxy-real-ip-cidr: 10.42.0.0/16
nginx.ingress.kubernetes.io/use-forwarded-headers: "true"
nginx.ingress.kubernetes.io/proxy-body-size: "2000m"
{{- end }}
{{- end }}

