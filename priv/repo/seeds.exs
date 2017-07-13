alias ExCMS.{Repo, Coherence.User}

Repo.delete_all User

User.changeset(%User{}, %{name: "admin", email: "admin@163.com", password: "admin123", password_confirmation: "admin123"})
|> Repo.insert!
|> Coherence.ControllerHelpers.confirm!