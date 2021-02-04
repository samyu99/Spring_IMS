package com.virtusa.myapp.teamg.vhelper;
import com.virtusa.myapp.teamg.model.User;
import com.virtusa.myapp.teamg.vo.UserVO;

public class UserVoHelper {
    private static UserVoHelper userHelper;

    public static UserVoHelper getInstance() {
        if(userHelper==null)
            userHelper= new UserVoHelper();

        return userHelper;
    }
    public User parseUserVoToEntity(UserVO userVO) {
        User user=new User();

        user.setId(userVO.getId());
        user.setUsername(userVO.getUsername());
        user.setPassword(userVO.getPassword());
        user.setPasswordConfirm(userVO.getPasswordConfirm());
        user.setLocation(userVO.getLocation());
        user.setMobileno(userVO.getMobileno());

        return user;
    }
    public UserVO parseEntityToUserVo(User user) {
        UserVO userVO=new UserVO();

        userVO.setId(user.getId());
        userVO.setUsername(user.getUsername());
        userVO.setPassword(user.getPassword());
        userVO.setPasswordConfirm(user.getPasswordConfirm());
        userVO.setLocation(user.getLocation());
        userVO.setMobileno(user.getMobileno());

        return userVO;
    }
}
