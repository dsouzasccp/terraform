terraform {
  backend "remote" {
    organization = "GrupoSifra"

    workspaces {
      name = "teste"
    }
  }
}