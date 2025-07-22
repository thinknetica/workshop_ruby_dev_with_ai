/*
Stimulus Loading 3.2.2
Copyright © 2023 37signals LLC
 */
export function eagerLoadControllersFrom(under, application) {
  const paths = Object.keys(window.__eagerLoadedControllers__ || {})
    .filter(path => path.startsWith(`${under}/`))
  
  paths.forEach(path => registerController(path, application))
}

function registerController(path, application) {
  if (application) {
    const name = path.replace(/^controllers\/|_controller\.\w+$/g, '')
                     .replace(/_/g, '-')
                     .replace(/\//g, '--')
    
    application.register(name, window.__eagerLoadedControllers__[path])
  }
}
