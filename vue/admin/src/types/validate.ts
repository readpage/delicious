interface Icallback {
  (message?: string | Error | undefined): Error | void
}

interface Ivalidate {
  (rule: object, value: string, callback: Icallback): void
}
