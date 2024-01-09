function _fzf_set_k8s_ctx
kubectl config use-context $(kubectl config get-contexts -o name | _fzf_wrapper --prompt="Kubernetes Context ")
end
