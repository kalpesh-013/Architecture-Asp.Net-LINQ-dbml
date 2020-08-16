using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Lib
{
    public class CurrentUser
    {
        public CurrentUser(int fiId, string fsUsername, string fsDisplayName, byte fiUserType)
        {
            Id = fiId;
            Username = fsUsername;
            DisplayName = fsDisplayName;
            UserType = fiUserType;
        }

        public int Id { get; set; }
        public string Username { get; set; }
        public string DisplayName { get; set; }
        public byte UserType { get; set; }
    }
}
