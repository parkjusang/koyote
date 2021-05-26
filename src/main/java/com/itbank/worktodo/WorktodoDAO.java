package com.itbank.worktodo;

import java.util.List;

public interface WorktodoDAO {

	List<WorktodoDTO> selectWorktodoList(int num);

}
