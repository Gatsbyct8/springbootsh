package com.sh.user.mapper;

import com.sh.common.mapper.MyMapper;
import com.sh.user.pojo.UserDetail;

public interface UserDetailMapper extends MyMapper<UserDetail>{
	void updateUserDetail(UserDetail detail);
}
