package config

import "github.com/opencloud-eu/opencloud/pkg/shared"

// HTTP defines the available http configuration.
type HTTP struct {
	Addr      string                `yaml:"addr" env:"GRAPH_HTTP_ADDR" desc:"The bind address of the HTTP service." introductionVersion:"1.0.0"`
	Namespace string                `yaml:"-"`
	Root      string                `yaml:"root" env:"GRAPH_HTTP_ROOT" desc:"Subdirectory that serves as the root for this HTTP service." introductionVersion:"1.0.0"`
	TLS       shared.HTTPServiceTLS `yaml:"tls"`
	APIToken  string                `yaml:"apitoken" env:"GRAPH_HTTP_API_TOKEN" desc:"An optional API bearer token" introductionVersion:"1.0.0"`
	CORS      CORS                  `yaml:"cors"`
}
