import dayjs from 'dayjs'
import "dayjs/locale/zh-cn"
import isToday from "dayjs/plugin/isToday"

dayjs.locale('zh-cn')
dayjs.extend(isToday)
export default dayjs