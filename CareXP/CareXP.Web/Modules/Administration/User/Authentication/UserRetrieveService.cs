namespace CareXP.Administration
{
    using Serenity;
    using Serenity.Abstractions;
    using Serenity.Data;
    using System;
    using System.Data;
    using MyRow = Entities.UserRow;

    public class UserRetrieveService : IUserRetrieveService
    {
        private static MyRow.RowFields fld { get { return MyRow.Fields; } }

        /// <summary>
        ///      Được gọi ra sau khi người dùng đăng nhập thành công vào hệ thống
        /// </summary>
        /// <param name="connection">The connection.</param>
        /// <param name="criteria">The criteria.</param>
        /// <returns></returns>
        private UserDefinition GetFirst(IDbConnection connection, BaseCriteria criteria)
        {
            // Dựa trên các dữ liệu mà người dùng đăng nhập, tìm ra thông tin chi tiết của hắn
            // đang chứa trong bảng User
            var user = connection.TrySingle<Entities.UserRow>(criteria);
            if (user != null)
                return new UserDefinition
                {
                    UserId = user.UserId.Value,
                    Username = user.Username,
                    Email = user.Email,
                    UserImage = user.UserImage,
                    DisplayName = user.DisplayName,
                    IsActive = user.IsActive.Value,
                    Source = user.Source,
                    PasswordHash = user.PasswordHash,
                    PasswordSalt = user.PasswordSalt,
                    UpdateDate = user.UpdateDate,
                    LastDirectoryUpdate = user.LastDirectoryUpdate,
                    //Tìm và lưu lại TenantID của tài khoản đăng nhập hiện thời, để dùng cho tiện
                    TenantId = user.TenantId.Value,
                    //Tìm luôn cả tên đầy đủ để hiện thị
                    TenantName = connection.TryById<Entities.TenantRow>(user.TenantId).TenantName
                };

            return null;
        }

        public IUserDefinition ById(string id)
        {
            return TwoLevelCache.Get<UserDefinition>("UserByID_" + id, TimeSpan.Zero, TimeSpan.FromDays(1), fld.GenerationKey, () =>
            {
                using (var connection = SqlConnections.NewByKey("Default"))
                    return GetFirst(connection, new Criteria(fld.UserId) == Int32.Parse(id));
            });
        }

        public IUserDefinition ByUsername(string username)
        {
            if (username.IsEmptyOrNull())
                return null;

            return TwoLevelCache.Get<UserDefinition>("UserByName_" + username.ToLowerInvariant(), 
                TimeSpan.Zero, TimeSpan.FromDays(1), fld.GenerationKey, () =>
            {
                using (var connection = SqlConnections.NewByKey("Default"))
                    return GetFirst(connection, new Criteria(fld.Username) == username);
            });
        }

        public static void RemoveCachedUser(int? userId, string username)
        {
            if (userId != null)
                TwoLevelCache.Remove("UserByID_" + userId);

            if (username != null)
                TwoLevelCache.Remove("UserByName_" + username.ToLowerInvariant());
        }
    }
}