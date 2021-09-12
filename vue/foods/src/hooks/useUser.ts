export function closeLoad() {
 setTimeout(() => {
  let loading = document.getElementById("loading") as Element;
  if (loading) {
    document.body.removeChild(loading);
  }
 }, 500);
}
