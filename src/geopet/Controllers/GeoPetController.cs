using Microsoft.AspNetCore.Mvc;
using geo_pet.Repository;
using geo_pet.Models;

namespace geo_pet.Controllers
{
    [ApiController]
    [Route("users")]
    public class UsersController : Controller 
    {
        private readonly IGeoPetRepository _repository;
        public UsersController(IGeoPetRepository repository)
        {
            _repository = repository;
        }

        [HttpGet]
        public IActionResult GetUsers()
        {
            var user = new UserDTO() {
                UserId = 1,
                Name = "Álvaro",
                Email = "alvaroramos222@hotmail.com",
                Phone = 5550123,
                Cep = 5550123,
                Password = "asdasd"

            };

            return Ok(user);
        }
   
    }
}