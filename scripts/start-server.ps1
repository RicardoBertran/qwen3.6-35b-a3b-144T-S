param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Leaf })]
    [string]$LlamaServerPath,

    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Leaf })]
    [string]$ModelPath,

    [string]$HostAddress = "127.0.0.1",
    [ValidateRange(1, 65535)]
    [int]$Port = 8080
)

& $LlamaServerPath `
    -m $ModelPath `
    -c 16384 `
    -fa on `
    -ctk q8_0 `
    -ctv q8_0 `
    -b 256 `
    -ub 128 `
    -np 1 `
    --fit on `
    --temp 0.6 `
    --top-k 20 `
    --top-p 0.95 `
    -n 8192 `
    --host $HostAddress `
    --port $Port

exit $LASTEXITCODE
