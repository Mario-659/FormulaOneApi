package com.formulaoneapi.repository;

import com.formulaoneapi.model.SeasonResult;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SeasonResultRepository extends CrudRepository<SeasonResult, Integer> {
    @Query(value = "SELECT result FROM SeasonResult result JOIN result.driver d WHERE d.team.name = :teamName")
    Iterable<SeasonResult> getAllByTeam(@Param("teamName") String teamName);

    Iterable<SeasonResult> getSeasonResultsByDriverNumber(int number);
}
