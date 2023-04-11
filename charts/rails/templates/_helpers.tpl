{{- define "rails.fullname" -}}
{{- if .Values.fullNameOverride -}}
{{- printf "%s-%s" .Release.Name .Values.fullNameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}


{{- define "rails.labels" -}}
ms: {{ include "rails.fullname" . }}
release: {{ .Release.Name }}
{{- end -}}

{{- define "rails.selector.labels" -}}
name: {{ include "rails.fullname" . }}
{{- end -}}