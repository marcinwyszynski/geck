package geck

_#Node: {
	config?: {[string]: _}
	exports?: {[string]: _}
	...
}

#Provider: _#Node & {
	source: string
	ref:    string
	...
}

#Resource: _#Node & {
	kind:     string
	provider: string
	...
}

#Module: _#Node & {
	components: {[string]: #Component}
	providers: {[string]: string}
}

#Conditional: {condition: bool}
#Expansion: {expand: string}

#Component: (
	#Provider |
	(#Resource & ( #Conditional | #Expansion | {} )) |
	(#Module & ( #Conditional | #Expansion | {} )))
