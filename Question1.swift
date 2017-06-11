class Question1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: Dictionary<Int,Int> = Dictionary()
        var result = [Int]()
        var j = 0
        for i in nums {
            let toFind = target - i;
            if let value = dict[i] {
                result.append(value)
                result.append(j)
                break
            }
            dict.updateValue(j, forKey: toFind)
            j += 1
        }
       return result
    }
}
