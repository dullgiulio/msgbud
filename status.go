package msgbud

// Connections status for the client
type Status int

const (
	// Client is not running at all
	StatusNone Status = iota
	// Client is connected
	StatusConnected
	// Client is not connected but running
	StatusDisconnected
)
