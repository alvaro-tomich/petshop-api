using Microsoft.EntityFrameworkCore.Infrastructure;

namespace geo_pet.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Cep { get; set; }
        public string Password { get; set; }
        public List<Pet>? Pets { get; set; }
    }
}