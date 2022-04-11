

## List all Container images in all namespaces
Fetch all Pods in all namespaces using `kubectl get pods --all-namespaces`
Format the output to include only the list of Container image names using `-o jsonpath={.items[*].spec.containers[*].image}`.
This will recursively parse out the image field from the returned json.
See the jsonpath reference for further information on how to use jsonpath.

Format the output using standard tools: `tr`, `sort`, `uniq`.
Use tr to replace spaces with newlines
Use sort to sort the results
Use uniq to aggregate image counts

```
kubectl get pods --all-namespaces -o jsonpath="{.items[*].spec.containers[*].image}" |\
tr -s '[[:space:]]' '\n' |\
sort |\
uniq -c
```
