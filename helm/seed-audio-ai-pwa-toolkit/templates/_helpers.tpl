{{- define "seed-audio-ai-pwa-toolkit.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "seed-audio-ai-pwa-toolkit.fullname" -}}
{{- if .Release.Name -}}
{{- printf "%s-%s" .Release.Name (include "seed-audio-ai-pwa-toolkit.name" .) | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "seed-audio-ai-pwa-toolkit.name" . -}}
{{- end -}}
{{- end -}}

{{- define "seed-audio-ai-pwa-toolkit.labels" -}}
app.kubernetes.io/name: {{ include "seed-audio-ai-pwa-toolkit.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
