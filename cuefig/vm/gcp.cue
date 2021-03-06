package vm

import (
	"github.com/hofstadter-io/jumpfiles/cuefig/cloud"
)

// Common settings inherited by all GCP instances
#GCP_Common: cloud.#GoogleConfig & {
	Labels: {
		devenv: "vm"
		...
	}

	// Network tags
	Tags: "devbox"

	...
}

// GCP_Configs is a map into the sizing options
// This definition is unified with the following (3) definitions
// - GCP_Common (above)
// - GoogleConfig (../cloud/google.cue)
#GCP_Configs: [Name=string]: #GCP_Common & { 
	size: Name
	Labels: {
		size: Name
		...
	}
	...
}

#GCP_Configs: {

	xs: {
		...
	}

	sm: {
		...
	}

	md: {
		...
	}

	lg: {
		...
	}

	xl: {
		...
	}

	...
}

