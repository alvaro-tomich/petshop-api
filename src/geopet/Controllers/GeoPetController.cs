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
            var user = _repository.GetUsers();

            return Ok(user);
        }
   
    }
}