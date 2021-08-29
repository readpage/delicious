export function closeLoad() {
  let loading = document.getElementById("loading") as Element;
  if (loading) {
    setTimeout(() => {
      document.body.removeChild(loading);
    }, 500);
  }
}
