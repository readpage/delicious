export function closeLoad() {
 setTimeout(() => {
  let loading = document.getElementById("loading") as Element;
  if (loading) {
    loading.remove()
  }
 }, 500);
}
