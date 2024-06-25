import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    var maxDungeons = 0
    
    func dfs(_ currentFatigue: Int, _ visited: [Bool], _ count: Int) {
        // 최대 던전 개수 업데이트
        maxDungeons = max(maxDungeons, count)
        
        for i in 0..<dungeons.count {
            let minFatigue = dungeons[i][0]
            let usedFatigue = dungeons[i][1]
            
            if !visited[i] && currentFatigue >= minFatigue {
                // 해당 던전을 방문하지 않았고 현재 피로도가 최소 필요 피로도 이상일 경우
                var newVisited = visited
                newVisited[i] = true
                dfs(currentFatigue - usedFatigue, newVisited, count + 1)
            }
        }
    }
    
    dfs(k, [Bool](repeating: false, count: dungeons.count), 0)
    
    return maxDungeons
}