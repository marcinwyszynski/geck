package geck

#Sensitive: {
	_sensitive: true
	value:      _
}

#Provider: {
	source!: string
	ref:     string
	config?: {[string]: _}
	exports?: {[string]: _}
}

#Resource: {
	kind!:     string
	provider!: string
	config?: {[string]: _}
	exports?: {[string]: _}
}

#Module: {
	components: {[string]: #Component}
	providers: {[string]: string}
	config?: {[string]: _}
	exports?: {[string]: _}
}

#Conditional: {condition: bool}
#Expansion: {expand: string}

#Component: (#Provider | #Resource | #Module) & (#Conditional | #Expansion | {})
