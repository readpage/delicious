import dayjs from 'dayjs'
import "dayjs/locale/zh-cn"
import relativeTime from "dayjs/plugin/relativeTime"

dayjs.locale('zh-cn')
// 当前时间以前
dayjs.extend(relativeTime)
export default dayjs