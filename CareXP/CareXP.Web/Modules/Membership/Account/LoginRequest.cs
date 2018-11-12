
namespace CareXP.Membership
{
    using Serenity.ComponentModel;
    using Serenity.Services;

    [FormScript("Membership.Login")]
    [BasedOnRow(typeof(Administration.Entities.UserRow))]
    public class LoginRequest : ServiceRequest
    {
        [Placeholder("enter your account name")]
        public string Username { get; set; }
        [PasswordEditor, Placeholder("input your password"), Required(true)]
        public string Password { get; set; }
    }
}