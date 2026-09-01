$basePath = $args[0]

$swiftFile = "$basePath.swift"

# Chemin du dossier .build
$buildPath = Join-Path $PSScriptRoot ".build"

# Créer .build s'il n'existe pas
if (!(Test-Path $buildPath)) {
    New-Item -ItemType Directory -Path $buildPath | Out-Null
}

# Récupérer seulement le nom du fichier
$fileName = Split-Path $basePath -Leaf

# Créer l'exécutable dans .build
$exeFile = Join-Path $buildPath "$fileName.exe"

$errors = & swiftc "$swiftFile" -o "$exeFile" 2>&1

if ($LASTEXITCODE -ne 0) {
    $errors
    exit $LASTEXITCODE
}

& "$exeFile"