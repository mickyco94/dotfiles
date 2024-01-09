function _fzf_set_k8s_ns
kubectl config set-context --current --namespace "$(kubectl get ns -o name | _fzf_wrapper --prompt "Kubernetes Namespaces" -d/ --with-nth=2 | cut -d/ -f2)"
end
