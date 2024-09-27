object maquina {
  const produccion = [43,18,49,62,33,39]

  method algunDiaSeProdujo(cantidad) {
    return produccion.contains(cantidad)
  }
  method maximoValorDeProduccion() {
    return produccion.max()
  }
  method valoresDeProduccionPares() {
    return produccion.filter({p => p.even()})
  }
  method produccionEsAcotada(n1,n2) {
    return produccion.all({p => p.between(n1, n2)})
  }
  method produccionesSuperioresA(cuanto) {
    return produccion.filter({p => p > cuanto})
  }
  method produccionesSumando(n) {
    return produccion.map({p => p + n})
  }
  method totalProducido() {
    return produccion.sum()
  }
  method ultimoValorDeProduccion() {
    return produccion.last()
  }
  method cantidadProduccionesMayorALaPrimera() {
    return produccion.count({p => p > produccion.first()})
  }
}