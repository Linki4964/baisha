document.getElementById("submitBtn").addEventListener("click", function() {
    // 获取表单数据
    const name = document.querySelector('input[name="name"]').value;
    const gender = document.querySelector('input[name="gender"]:checked').value;
    const age = document.querySelector('input[name="age"]').value;
    const origin = document.querySelector('input[name="origin"]').value;
    const ethnicity = document.querySelector('input[name="ethnicity"]').value;
    const school = document.querySelector('input[name="school"]').value;
    const guardian = document.querySelector('input[name="guardianName"]').value; // 只取一个监护人
    
    // 创建表格行
    const table = document.getElementById("personList").getElementsByTagName("tbody")[0];
    const newRow = table.insertRow();
    
    // 创建单元格并填充数据
    const nameCell = newRow.insertCell(0);
    const genderCell = newRow.insertCell(1);
    const ageCell = newRow.insertCell(2);
    const originCell = newRow.insertCell(3);
    const ethnicityCell = newRow.insertCell(4);
    const schoolCell = newRow.insertCell(5);
    const guardianCell = newRow.insertCell(6);
    const actionCell = newRow.insertCell(7);
    
    nameCell.innerHTML = name;
    genderCell.innerHTML = gender;
    ageCell.innerHTML = age;
    originCell.innerHTML = origin;
    ethnicityCell.innerHTML = ethnicity;
    schoolCell.innerHTML = school;
    guardianCell.innerHTML = guardian;
    
    // 操作按钮
    const deleteBtn = document.createElement("button");
    deleteBtn.className = "action-btn";
    deleteBtn.innerHTML = "删除";
    actionCell.appendChild(deleteBtn);
    
    // 删除功能
    deleteBtn.addEventListener("click", function() {
        table.deleteRow(newRow.rowIndex - 1); // 删除当前行
    });
    
    // 清空表单
    document.getElementById("registrationForm").reset();
});
