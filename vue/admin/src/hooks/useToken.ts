const token = "token"

export function setToken(newToken: string) {
  localStorage.setItem(token, JSON.stringify(newToken))
}

export function getToken () {
  return JSON.parse(localStorage.getItem(token) as string)
}

export function remToken() {
  localStorage.removeItem(token)
}