export function closeLoad() {
  let loading = document.getElementById("loading") as Element;
  if (loading) {
    document.body.removeChild(loading);
  }
}
