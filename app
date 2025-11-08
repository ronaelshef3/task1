apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: task1-0
spec:
  project: default
  source:
    repoURL: https://github.com/ronaelshef3/task1
    path: my-chart
    targetRevision: HEAD
    helm:
      valueFiles:
        - values.yaml
  destination:
    server: https://kubernetes.default.svc
    namespace: default
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
