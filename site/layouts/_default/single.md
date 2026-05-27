---
title: "{{ .Title }}"
description: "{{ with .Description }}{{ . }}{{ else }}{{ .Site.Params.description }}{{ end }}"
url: "{{ .Permalink }}"
language: "{{ .Site.LanguageCode }}"
author: "{{ .Site.Params.author }}"
canonical: "{{ .Permalink }}"
generated: "{{ now.Format "2006-01-02T15:04:05Z07:00" }}"
---

# {{ .Title }}

{{ .RawContent }}

---

*© 2016-2026 Lightcyphers SRL · [Acasă](./)*
