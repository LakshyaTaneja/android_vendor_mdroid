package android
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}
	Target_shim_libs struct {
		Cppflags []string
	}
        Additional_gralloc_10_usage_bits struct {
		Cppflags []string
        }
}

type ProductVariables struct {
	Needs_text_relocations  *bool `json:",omitempty"`
	Target_shim_libs  *string `json:",omitempty"`
        Additional_gralloc_10_usage_bits  *string `json:",omitempty"`
}
