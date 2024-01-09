function _fzf_k8s_pod_logs
kubectl get pods -o name | fzf --preview="kubectl logs {} | tail -n 100 " --preview-window=right:70%
end
