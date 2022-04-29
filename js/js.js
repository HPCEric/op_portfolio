function del(table, id) {
	let msg = "確定要刪除嗎?";
	if (confirm(msg) == 1) {
		$.post('api/del.php', {
			table,
			id
		}, () => {
			location.reload()
		})
	}
}